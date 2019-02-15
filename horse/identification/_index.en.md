---
title: identification
weight: 5
---

## Attributes

Attribute            | Type 		      | Example 		            | Description
---------            | ------- 	      | -----------             |	-----------
stableName 		       | string 	      | The Deer 		            | a name the horse is known by on a day-to-day basis
stableNameAdditional | string[]       | Donnie, Donnerd, Rhonda | additional common names  
stableNameFormer     | string[]       | Foal 12, Mr. Whiskers   | previous common names  
uelnID 			         | string 	      | 25000100155928M	        | [universal equine life number](http://inside.fei.org/fei/veterinarians/passports/ueln)
registryInfo	       | [registryInfo](/horse/registryinfo)[] |					                | an array of [registryInfo](/horse/registryinfo) objects

## Discussion

While keeping [some excellent rules](http://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/) in mind, it may be noted that horses often (but not always) have a primary day-to-day name their caretakers know them by. They may have additional day-to-day names or nicknames; some systems may offer a way to track those as well. For matching purposes or historical interest, it may be useful to store former common names.

More formally, the [UELN](http://inside.fei.org/fei/veterinarians/passports/ueln) is the current best attempt at a truly universal and unique coding identifier. Not all horses will have a UELN but for those that do it is the best way to match data across systems. The UELN is composed of sub-codes, and various systems will decompose and store those codes separately. However it is not necessary to provide attributes for the subcodes in this common standard.

RideAlert is a company which administers an emergency notification system; a centerpiece of which is (yet another) universal / unique ID. Where present, it may be a useful attribute for matching data across systems.

Many horses have a formal name and ID number as part of a breed registry, be it a Jockey Club name and ID for a racing Thoroughbred or a pedigree name and ID for an Andalusian. Often that ID will be the best way to uniquely identify a particular animal. However, because horses can belong to more than one registry, we do not simply have a field for BreedID, instead we include an array of registryInfo objects.

## Open Questions

{{% notice note %}}
What other non-breed-registry ID systems exist?
{{% /notice %}}

## Code

#### C-Sharp
```csharp
string BarnName { get; set; }
List<string> BarnNameAKA { get; set; }
string FormalName { get; set; }
```

#### Obj-C
```obj-c
NSString *barnName;
NSArray<NSString *> *barnNameAKA;
NSString *formalName;
```
