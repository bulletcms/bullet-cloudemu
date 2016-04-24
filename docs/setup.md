# Setup

## IMPORTANT
Install using
```zsh
$ ./build.sh
```
for now.
This is due to the fact that the gcloud emulator does not yet support grpc and thus for some reason cannot allow api calls or viewing of the admin page.

## Installation
- Install Java 7 or later
- Install the Google Cloud SDK
- Initialize gcloud
```zsh
$ gcloud init
```
- List installed components
```zsh
$ gcloud components list
```
- If gcd-emulator and beta not installed
```zsh
$ sudo gcloud components install gcd-emulator
$ sudo gcloud components install beta
```
- If components need to be updated
```zsh
$ sudo gcloud components update
```
- If components need to be removed
```zsh
$ sudo gcloud components remove <component-id>
```

## Run
```zsh
$ ./run.sh
```
