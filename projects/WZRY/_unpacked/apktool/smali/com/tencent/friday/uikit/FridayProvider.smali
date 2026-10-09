.class public Lcom/tencent/friday/uikit/FridayProvider;
.super Ljava/lang/Object;
.source "FridayProvider.java"

# interfaces
.implements Lcom/tencent/friday/uikit/IFriday;


# instance fields
.field private mMsgCenter:Lcom/tencent/friday/uikit/c/a;

.field private mViewManager:Lcom/tencent/friday/uikit/d/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/FridayProvider;->mMsgCenter:Lcom/tencent/friday/uikit/c/a;

    .line 25
    invoke-static {}, Lcom/tencent/friday/uikit/d/c;->b()Lcom/tencent/friday/uikit/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/FridayProvider;->mViewManager:Lcom/tencent/friday/uikit/d/b;

    .line 26
    return-void
.end method


# virtual methods
.method public call([B[B)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/friday/uikit/FridayProvider;->mMsgCenter:Lcom/tencent/friday/uikit/c/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/friday/uikit/c/a;->a([B[B)[B

    .line 39
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/tencent/friday/uikit/IFridayCallBack;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/FridayProvider;->mViewManager:Lcom/tencent/friday/uikit/d/b;

    invoke-interface {v0, p1}, Lcom/tencent/friday/uikit/d/b;->a(Landroid/app/Activity;)V

    .line 52
    iget-object v0, p0, Lcom/tencent/friday/uikit/FridayProvider;->mMsgCenter:Lcom/tencent/friday/uikit/c/a;

    invoke-interface {v0, p2}, Lcom/tencent/friday/uikit/c/a;->a(Lcom/tencent/friday/uikit/IFridayCallBack;)V

    .line 53
    invoke-static {}, Lcom/tencent/friday/uikit/a/a/a;->a()V

    .line 54
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/friday/uikit/FridayProvider;->mViewManager:Lcom/tencent/friday/uikit/d/b;

    invoke-interface {v0}, Lcom/tencent/friday/uikit/d/b;->a()V

    .line 64
    iget-object v0, p0, Lcom/tencent/friday/uikit/FridayProvider;->mMsgCenter:Lcom/tencent/friday/uikit/c/a;

    invoke-interface {v0}, Lcom/tencent/friday/uikit/c/a;->a()V

    .line 65
    return-void
.end method
