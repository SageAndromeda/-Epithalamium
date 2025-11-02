using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.EventSystems;

// Used to manage and show dialogue
// Once again modeled after the tutorial by Shaped by Rain Studios

public class DialogueManager : MonoBehaviour
{
    [Header("Dialogue UI")]
    [SerializeField] private GameObject dialoguePanel;
    [SerializeField] private TextMeshProUGUI dialogueText;

    // Implement Choices
    [Header("Choices UI")]
    [SerializeField] private GameObject[] choices;
    private TextMeshProUGUI[] choicesText;


    private Story currentStory;
    public bool dialogueIsPlaying {get; private set; } // public but not editable
    
    // Singleton class—There can only be one

    private static DialogueManager instance;

    // This ensures there's only one
    private void Awake() {
        if (instance != null)
        {
            Debug.LogWarning("Found more than one dialogue manager in the scene.");
        }
        instance = this;
    }

    // Getter used to make sure there's only one Dialogue Manager
    public static DialogueManager GetInstance()
    {
        return instance;
    }

    // on start, turn off any dialogue to make sure activating it works properly
    private void Start()
    {
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);

        // Get text for all choices:
        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        // For every choice, display it
        foreach (GameObject choice in choices)
        {
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }
    }

    // 
    private void Update()
    {
        // return right away if no dialogue
        if (!dialogueIsPlaying)
        {
            return;
        }
        
        // handle continuing to the next line when submit is pressed
        if (InputManager.GetInstance().GetSubmitPressed())
        {
            ContinueStory();
        }
    }

    // Start dialogue playing using a passed in INK file
    public void EnterDialogueMode(TextAsset inkJSON)
    {
        currentStory = new Story(inkJSON.text);
        dialogueIsPlaying = true;
        dialoguePanel.SetActive(true);

        ContinueStory();
    }

    // Exit dialogue
    private IEnumerator ExitDialogueMode()
    {
        // Tells script to wait a moment before exiting
        // Stops players from accidentally skipping
        // Or other accidental inputs
        yield return new WaitForSeconds(0.2f);

        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        dialogueText.text = "";
    }

    // How it moves from line to line of dialogue
    private void ContinueStory()
    {
        // If there's already a story, continue it
        if (currentStory.canContinue)
        {
            dialogueText.text = currentStory.Continue();
            // Show dialogue choices if available
            DisplayChoices();
        }
        else // empy json file passed in
        {
            StartCoroutine(ExitDialogueMode());
        }
    }

    // Show player dialogue choices if there are any
    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;
        
        // Limit number of choices to 4
        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("More choices given than UI can support. Number given: " + currentChoices.Count);
        }

        // Initiate availbable choices
        int index = 0;
        foreach(Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }

        // go through remaining choices to hide them
        for (int i = index; i<choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false);
        }

    }

}
