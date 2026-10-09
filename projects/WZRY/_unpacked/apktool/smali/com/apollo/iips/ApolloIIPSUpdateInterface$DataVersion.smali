.class public Lcom/apollo/iips/ApolloIIPSUpdateInterface$DataVersion;
.super Ljava/lang/Object;
.source "ApolloIIPSUpdateInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apollo/iips/ApolloIIPSUpdateInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataVersion"
.end annotation


# instance fields
.field public dataVersion:S

.field final synthetic this$0:Lcom/apollo/iips/ApolloIIPSUpdateInterface;


# direct methods
.method public constructor <init>(Lcom/apollo/iips/ApolloIIPSUpdateInterface;)V
    .locals 1

    .prologue
    .line 12
    iput-object p1, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface$DataVersion;->this$0:Lcom/apollo/iips/ApolloIIPSUpdateInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/apollo/iips/ApolloIIPSUpdateInterface$DataVersion;->dataVersion:S

    return-void
.end method
