.class Lcom/netease/download/util/SpUtil$PreferenceUnit;
.super Ljava/lang/Object;
.source "SpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/util/SpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferenceUnit"
.end annotation


# instance fields
.field public editor:Landroid/content/SharedPreferences$Editor;

.field public preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pSpName"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/util/SpUtil$PreferenceUnit;->preferences:Landroid/content/SharedPreferences;

    .line 137
    iget-object v0, p0, Lcom/netease/download/util/SpUtil$PreferenceUnit;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/util/SpUtil$PreferenceUnit;->editor:Landroid/content/SharedPreferences$Editor;

    .line 138
    return-void
.end method
