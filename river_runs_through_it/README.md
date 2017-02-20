# A River Runs Through It

Consider the information below shown in JSON format.

```json
{ "name": "mississippi",
  "length" : 2320,
  "tributaries": [
    { "name": "illinois",
      "tributaries": [
        { "name": "red",
          "length" : 147
        },
        { "name": "des plaines",
          "length": 214
        }
      ]
    },
    { "name": "ohio",
      "length": 809
    }
  ]
}
```

Treating this as a sample of a larger set of data, answer the following questions:

Is there a design pattern that would allow you to efficiently represent this data in memory in a way that could be easily interacted with?

How would you programmatically calculate the length of an entire river system, including its tributaries?

What if you had to graph the system? Would that pattern change?

Use your selected pattern & draw the graph in question. Plain text is fine, bonus points for graphics, super bonus points for a web interface.
