# Media Platform App

A Flutter demo application for mobile.

## Goal of this example

This example demonstrates how to:

- perform gRPC requests
  - prepare a gRPC mock server
- use flutter_riverpod (not use hooks)
  - update multiple widgets for a single event
  - pass arguments when transitioning screens
- use Stream
- manage an app theme with ThemeData
- optimize widget rebuilds (only what needs to update does update)

## Get started

### Run a gRPC mock server

```bash
$ dart run bin/mock_server.dart
```

## Application Architecture

### MVC

#### Model

- execute business logics
- manage a state

#### Controller

- interprets user actions from View, and sends messages to Model

#### View

- application's view (It consists of Flutter Widgets)
- depends on Controller
