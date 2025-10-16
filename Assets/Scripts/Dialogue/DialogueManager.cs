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
    private Story currentStory;
    private bool dialogueIsPlaying;
    
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
    private void ExitDialogueMode()
    {
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
        }
        else // empy json file passed in
        {

        }
    }

}
