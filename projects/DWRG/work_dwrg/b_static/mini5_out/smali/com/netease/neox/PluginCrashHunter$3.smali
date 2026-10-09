.class Lcom/netease/neox/PluginCrashHunter$3;
.super Ljava/lang/Object;
.source "PluginCrashHunter.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/callback/NTEventOccurCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginCrashHunter;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginCrashHunter;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginCrashHunter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/netease/neox/PluginCrashHunter$3;->this$0:Lcom/netease/neox/PluginCrashHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNTEventOccurCallBack(ILjava/lang/String;)V
    .locals 0

    .line 153
    invoke-static {p1, p2}, Lcom/netease/neox/PluginCrashHunter;->access$400(ILjava/lang/String;)V

    return-void
.end method
