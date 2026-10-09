.class public Lcom/subao/common/intf/SupportGameLabel;
.super Ljava/lang/Object;
.source "SupportGameLabel.java"


# instance fields
.field private final exact:Z

.field private final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/subao/common/intf/SupportGameLabel;->label:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Lcom/subao/common/intf/SupportGameLabel;->exact:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/subao/common/intf/SupportGameLabel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/subao/common/intf/SupportGameLabel;->exact:Z

    return v0
.end method
