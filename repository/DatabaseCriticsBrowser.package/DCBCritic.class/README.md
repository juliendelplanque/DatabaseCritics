I am holding all data about a database critic.

I can be serialized and materialized using respectively
- DCBCritic>>#writeInFile:
- DCBCritic class>>#readFromFile:

Example: 
"Serialize aDCBCritic object in the working dir in a file named foo.critic"
aDCBCritic wirteInFile: (FileReference workingDirectory / 'foo.critic').

"Materialize the DCBCritic object hold in foo.critic file in working dir."
DCBCritic readFromFile: (FileReference workingDirectory / 'foo.critic')