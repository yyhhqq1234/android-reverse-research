.class public Lcom/tencent/hawk/bridge/JArrS;
.super Ljava/lang/Object;
.source "JArrS.java"


# instance fields
.field public args:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/hawk/bridge/JArrS;->args:[Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public getContent()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/tencent/hawk/bridge/JArrS;->args:[Ljava/lang/String;

    return-object v0
.end method
