.class public interface abstract Lcom/netease/unisdk/ngvoice/NgVoiceCallback;
.super Ljava/lang/Object;
.source "NgVoiceCallback.java"


# static fields
.field public static final ERROR_CREATE_FILE_ERROR:Ljava/lang/String; = "create_file_error"

.field public static final ERROR_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final ERROR_NO_ENOUGH_SPACE:Ljava/lang/String; = "no_enough_space"


# virtual methods
.method public abstract onDownloadFinish(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPlaybackFinish(Z)V
.end method

.method public abstract onRecordFinish(ZLjava/lang/String;FLjava/lang/String;)V
.end method

.method public abstract onRequestPermissions(Z)V
.end method

.method public abstract onTranslateFinish(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUploadFinish(ZLjava/lang/String;Ljava/lang/String;)V
.end method
