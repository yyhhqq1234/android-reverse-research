.class public interface abstract Lcom/yasirkula/unity/NativeFilePickerResultReceiver;
.super Ljava/lang/Object;
.source "NativeFilePickerResultReceiver.java"


# virtual methods
.method public abstract OnFilePicked(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public abstract OnFilesExported(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public abstract OnMultipleFilesPicked(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation
.end method
