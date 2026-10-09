.class public final Lcom/tencent/apollo/ApolloVoiceEngine$BluetoothState;
.super Ljava/lang/Object;
.source "ApolloVoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/ApolloVoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothState"
.end annotation


# static fields
.field public static final SCO_CONNECTED:I = 0x1

.field public static final SCO_CONNECTING:I = 0x1

.field public static final SCO_DIS_CONNECTED:I = 0x0

.field public static final SCO_ERROR:I = -0x1

.field public static final SCO_STATED:I = 0xa

.field public static final SCO_STOPED:I = 0x14

.field public static final UNINITIALIZED:I = -0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
