.class Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;
.super Landroid/database/ContentObserver;
.source "DLBasePluginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryg/dynamicload/DLBasePluginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsValueChangeContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;


# direct methods
.method public constructor <init>(Lcom/ryg/dynamicload/DLBasePluginActivity;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ryg/dynamicload/DLBasePluginActivity;->isAllowSensor:Z

    .line 125
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    iget-boolean v0, v0, Lcom/ryg/dynamicload/DLBasePluginActivity;->isAllowSensor:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    iget-object v0, v0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    iget-object v0, v0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    iget-object v0, v0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity$SettingsValueChangeContentObserver;->this$0:Lcom/ryg/dynamicload/DLBasePluginActivity;

    iget-object v0, v0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method
