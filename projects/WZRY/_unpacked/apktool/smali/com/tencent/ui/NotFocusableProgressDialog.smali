.class public Lcom/tencent/ui/NotFocusableProgressDialog;
.super Landroid/app/ProgressDialog;
.source "NotFocusableProgressDialog.java"


# instance fields
.field private mIsSystemUiVisibilitySet:Z

.field private mSystemUiVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/ui/NotFocusableProgressDialog;->mIsSystemUiVisibilitySet:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/ui/NotFocusableProgressDialog;->mIsSystemUiVisibilitySet:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-boolean v2, p0, Lcom/tencent/ui/NotFocusableProgressDialog;->mIsSystemUiVisibilitySet:Z

    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/tencent/ui/NotFocusableProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 38
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 41
    iget v2, p0, Lcom/tencent/ui/NotFocusableProgressDialog;->mSystemUiVisibility:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43
    :cond_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 46
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "window":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 1
    .param p1, "systemUiVisibility"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/tencent/ui/NotFocusableProgressDialog;->mSystemUiVisibility:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/ui/NotFocusableProgressDialog;->mIsSystemUiVisibilitySet:Z

    .line 30
    return-void
.end method
