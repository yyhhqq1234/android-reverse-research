.class public Lcom/tencent/apollo/ApolloVoiceEngine;
.super Ljava/lang/Object;
.source "ApolloVoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/apollo/ApolloVoiceEngine$BluetoothState;,
        Lcom/tencent/apollo/ApolloVoiceEngine$DeviceState;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    :try_start_0
    const-string v1, "apollo_voice"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 11
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 13
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "load library failed!!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native GetHeadsetVoipState()Z
.end method

.method public static final native OnEvent(ILjava/lang/String;)V
.end method

.method public static final native Pause()I
.end method

.method public static final native Resume()I
.end method

.method public static final native SetBluetoothState(Z)V
.end method

.method public static final native SetHeadSetState(Z)V
.end method

.method public static final native StartBlueTooth()I
.end method

.method public static final native StopBlueTooth()I
.end method
