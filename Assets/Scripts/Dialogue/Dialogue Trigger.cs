using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewBehaviourScript : MonoBehaviour
{
    // Make dialogue notif show up on player nearby
    // From tutorial
    // Change later
    // May not even need dialogue tag
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
        if (playerInRange)
        {
            visualCue.SetActive(true);
            if (InputManager.GetInstance().GetInteractPressed())
            {
                Debug.Log("i pressed");
                Debug.Log(inkJSON.text);
            }
        }
        else
        {
            visualCue.SetActive(false);
        }
    }

    // Check if something entered or exited the collider
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
