using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{
    // Make dialogue notif show up on player nearby
    // From tutorial
    // Change later to trigger with scene
    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    private bool playerInRange;

    private void Awake()
    {
        // Hide visual cue at start of game
        // May remove later
        playerInRange = false;
        visualCue.SetActive(false);
    }

    // Update code
    private void Update()
    {
        // If the player is in NPC's collider, show visual cue
        // Then let them interact with NPC by pressing a button (i currently)
        // Probably gonna change later to automatically trigger on scene
        if (playerInRange)
        {
            // If player is in range and presses interact button, print dialogue
            visualCue.SetActive(true);
            if (InputManager.GetInstance().GetInteractPressed())
            {
                DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
            }
        }
        else
        {
            visualCue.SetActive(false);
        }
    }

    // Check if the player entered or exited the collider
    // This then lets players interact
    // Again, likely change later
    // The tutorial I'm following is assuming I'm making a platformer
    private void OnTriggerEnter2D(Collider2D collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = true;
        }
    }

    private void OnTriggerExit2D(Collider2D collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = false;
        }
    }
}
