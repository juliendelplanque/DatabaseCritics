Database Critics Browser
========================

# Installation
DCB is integrated to [Myrddin](http://smalltalkhub.com/#!/~AnneEtien/Myrddin)
but can also be used in standalone mode.

## Install in standalone mode
~~~
Metacello new
    baseline: 'DatabaseCritics';
    repository: 'github://juliendelplanque/DatabaseCritics/repository';
    load: 'UI-standalone'.
~~~

# Use this project as a dependency
To use this project as a dependency of your project, simply add
the following code snippet to you Configuration/Baseline:

~~~
spec baseline: 'DatabaseCritics' with: [
    spec repository: 'github://juliendelplanque/DatabaseCritics/repository' ].
~~~

# How to use this project
This section explains you how to check a famix model programatically using this framework.
The generation of the model is not the responsability of this tool. So in the
following explanations, we will assume that you generated a Famix-SQL model and
the variable `model` holds it.

## Do a critic (Famix-SQL model checking)
The following code checks the model with all rules defined in the image:

~~~
"Create the model checker."
mc := DCModelChecker withAllRulesButThresholdsOn: model.

"Run rules on the entities."
mc checkEntities.
~~~

It is possible to choose the rules to apply on the model using a block:

~~~
"Create the model checker with rules that can be applied
on FAMIXTable entities only."
mc := DCModelChecker
	on: model
	withRulesSatisfying: [ :rule | rule acceptEntityClass: FAMIXTable ].
~~~

Another way to create a model checker is to specify the rules to use
explicitly:

~~~
mc := DCModelChecker
	on: model
	withRules: { DCMissingPrimaryKey new . DCUnusedPrimaryKey new }.
~~~

There are other messages defined in DCModelChecker class to instantiate it. 

Once the model checker has been built, it is ready to run the rules on the
model. To do that simple use `#checkEntities` message:

~~~
mc checkEntities.
~~~

After this message has been performed, the rules held by the model checker
hold entities of the model that are violating them. You can access these
rules using `rules` message:

~~~
mc rules.
~~~

## Classify the results of a critic
Once model's entities have been checked, it is possible to classify them
as a tree using, eventually, multiple level of classification.

The classification method are defined as subclasses of `DCRuleClassification`
class. For example, if rules have to be classified according to their
criticity, the following code would do the job:

~~~
classification := DCSeverityClassification rules: mc rules.
~~~

Once the classification has been created, you can access the root of the
tree build using `root` message:

~~~
classification root.
~~~

The object returned by the preceding expression is a DCRoot object, subclass
of DCGroup object. These object are useful for results exportation which is
detailed later in this document.

## Mark an entity as a false positive for a rule
Let `rule` be the rule holding entities (i.e. the model checker has already
run this rule on the model) and `entity` be the entity that should be marked
as a false positive. The following code mark the entity `entity` as a false
positive for the rule `rule`:

~~~
rule addFalsePositive: entity.
~~~

From the moment this expressionha been performed, the entity will not appear
in the result of `DCRule>>entitiesViolatingTheRuleWithoutFalsePositives`.
