# Vehicle Status

Holds features related with vehicle status.

- [Release Notes](documentation/release%20notes.md)


## Public Widgets


### Increment Feature

<table>
<tr>
<td>Description</td>
<td>Code Snippet</td>
<td>Render</td>
<td>Data Transfers</td>
</tr>
<tr>
<td>
Vehicle Brand
</td>
<td>

```dart
VehicleBrandWidget()
```

</td>
<td>

![](/documentation/IncrementCounterWidget.png)
</td>
<td>

Consumes:
```dart
class Brand {
  final String name;
  Brand({required this.name});
}
```
</td>
</tr>
</table>

### Vehicle Capabilities List

<table>
<tr>
<td>Description</td>
<td>Code Snippet</td>
<td>Render</td>
<td>Data Transfers</td>
</tr>
<tr>
<td>
Capabilities Widget List
</td>
<td>

```dart
CapabilitiesWidget()
```

</td>
<td>

![](documentation/GarageWidget.png)
</td>
<td>

Consumes:
```dart
class Capability {
  final String name1;
  Capability({required this.name1});
}
```
</td>
</tr>
</table>

### Vehicle Fuel

<table>
<tr>
<td>Description</td>
<td>Code Snippet</td>
<td>Render</td>
<td>Data Transfers</td>
</tr>
<tr>
<td>
Vehicle Fuel Widget
</td>
<td>

```dart
VehicleFuelWidget()
```

</td>
<td>

![](documentation/GarageWidget.png)
</td>
<td>
N/A
</td>
</tr>
</table>

## Inversion Of Control

```dart
// Module for Vehicle Capabilities Feature
CapabilitiesModule(),
// Module for Vehicle Brand Feature
VehicleBrandModule(),
// Module for Vehicle Fuel Feature
VehicleFuelModule()
```
