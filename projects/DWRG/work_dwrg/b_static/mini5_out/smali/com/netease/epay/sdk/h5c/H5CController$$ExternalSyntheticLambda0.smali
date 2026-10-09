.class public final synthetic Lcom/netease/epay/sdk/h5c/H5CController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/netease/epay/sdk/base/util/FrameworkActivityManager$ActivityFilter;


# instance fields
.field public final synthetic f$0:Lcom/netease/epay/sdk/h5c/H5CController;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/epay/sdk/h5c/H5CController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/epay/sdk/h5c/H5CController$$ExternalSyntheticLambda0;->f$0:Lcom/netease/epay/sdk/h5c/H5CController;

    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController$$ExternalSyntheticLambda0;->f$0:Lcom/netease/epay/sdk/h5c/H5CController;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/h5c/H5CController;->lambda$exitAllActivityByController$0$com-netease-epay-sdk-h5c-H5CController(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
