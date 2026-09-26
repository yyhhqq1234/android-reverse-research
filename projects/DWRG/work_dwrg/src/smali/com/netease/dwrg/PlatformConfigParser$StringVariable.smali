.class public Lcom/netease/dwrg/PlatformConfigParser$StringVariable;
.super Lcom/netease/dwrg/PlatformConfigParser$Variable;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/PlatformConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StringVariable"
.end annotation


# instance fields
.field protected m_value:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/dwrg/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/netease/dwrg/PlatformConfigParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->this$0:Lcom/netease/dwrg/PlatformConfigParser;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/netease/dwrg/PlatformConfigParser$Variable;-><init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "predicate"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 110
    const-string v2, "=="

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    const-string v2, "!="

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 118
    :cond_2
    const-string v2, "contain"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 122
    :cond_3
    const-string v2, "startwith"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 126
    :cond_4
    const-string v2, "endwith"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 128
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 130
    :cond_5
    const-string v2, "not contain"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 132
    iget-object v2, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 134
    :cond_6
    const-string v2, "not startwith"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 136
    iget-object v2, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 138
    :cond_7
    const-string v2, "not endwith"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 140
    iget-object v2, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 144
    :cond_8
    const-string v0, "NeoXDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized predicate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 146
    goto/16 :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    return-object v0
.end method
