I am holding all data about a database critic.

I can be serialized and materialized using respectively
- DCCritic>>#writeInFile:
- DCCritic class>>#readFromFile:

Example: 
"Serialize aDCCritic object in the working dir in a file named foo.critic"
aDCCritic wirteInFile: (FileReference workingDirectory / 'foo.critic').

"Materialize the DCCritic object hold in foo.critic file in working dir."
DCCritic readFromFile: (FileReference workingDirectory / 'foo.critic')