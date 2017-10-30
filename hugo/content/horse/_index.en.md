---
title: Horse
weight: 5
pre: ""
chapter: true
---

### Chapter 1

# Horse

The Horse object defines attributes of an equid.

<aside class="notice">This error section is stored in a separate file in `includes/_errors.md`. Slate allows you to optionally separate out your docs into many files...just save them to the `includes` folder and add them to the top of your `index.md`'s frontmatter. Files are included in the order listed.</aside>

## Identification

```csharp
string BarnName { get; set; }
List<string> BarnNameAKA { get; set; }
string FormalName { get; set; }
```

```objective_c
NSString *barnName;
NSArray<NSString *> *barnNameAKA;
NSString *formalName;
```

Attribute 		| Type 		| Example 			| Description
--------- 		| ------- 	| ----------- 		|	-----------
stableName 		| string 	| The Deer 			| a name the horse is known by on a day-to-day basis
stableNameAKA 	| string[] | Donnie, Donnerd, Rhonda | additional common names  
uelnID 			| string 	| 25000100155928M	| [universal equine life number](http://inside.fei.org/fei/veterinarians/passports/ueln)
rideAlertID 	| string 	|					| a unique code from [RideAlert](http://www.ridealert.us/)
registryInfo	| registryInfo[]	|					|


## registryInfo

Attribute 		| Type 		| Example 			| Description
--------- 		| ------- 	| ----------- 		| -----------
registryOrgID 	| string 	| 					| the breed registry granting the breedID or formalName
registryID 		| string 	| 					| a horse-unique code from a breed registry
registryName 	| string 	| Donner 			| the name of the animal as related to a registry

## Biometrics

Attribute       | Type      | Description
---------       | -------   | -----------
foalDate        | timestamp | March 30, 1970
deathDate       | timestamp | October 4, 1989

<aside class="notice">Should we add place to foaling & death? And if so, as a text field ("Claiborne Farm, Paris, Kentucky)" or as GPS coordinates?</aside>

# Health

Attribute       | Type                  | Description
---------       | -------               | -----------
weightHistory   | weightMeasurement[]    | the official name; often related to a breed registry
heightHistory   | heightMeasurement[]    | the official name; often related to a breed registry
