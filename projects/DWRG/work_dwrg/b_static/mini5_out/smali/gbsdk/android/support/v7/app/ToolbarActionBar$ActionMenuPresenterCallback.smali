.class public final Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lgbsdk/android/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Lgbsdk/android/support/v7/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/app/ToolbarActionBar;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lgbsdk/android/support/v7/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lgbsdk/android/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 568
    iget-boolean p2, p0, Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 572
    iput-boolean p2, p0, Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 573
    iget-object p2, p0, Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lgbsdk/android/support/v7/app/ToolbarActionBar;

    iget-object p2, p2, Lgbsdk/android/support/v7/app/ToolbarActionBar;->mDecorToolbar:Lgbsdk/android/support/v7/widget/DecorToolbar;

    invoke-interface {p2}, Lgbsdk/android/support/v7/widget/DecorToolbar;->dismissPopupMenus()V

    .line 574
    iget-object p2, p0, Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lgbsdk/android/support/v7/app/ToolbarActionBar;

    iget-object p2, p2, Lgbsdk/android/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz p2, :cond_1

    .line 575
    iget-object p2, p0, Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lgbsdk/android/support/v7/app/ToolbarActionBar;

    iget-object p2, p2, Lgbsdk/android/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 577
    iput-boolean p1, p0, Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    return-void
.end method

.method public onOpenSubMenu(Lgbsdk/android/support/v7/view/menu/MenuBuilder;)Z
    .locals 2

    .line 559
    iget-object v0, p0, Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lgbsdk/android/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Lgbsdk/android/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lgbsdk/android/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lgbsdk/android/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Lgbsdk/android/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
