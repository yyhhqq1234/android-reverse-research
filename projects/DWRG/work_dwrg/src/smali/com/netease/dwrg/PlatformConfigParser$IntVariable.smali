.class public Lcom/netease/dwrg/PlatformConfigParser$IntVariable;
.super Lcom/netease/dwrg/PlatformConfigParser$Variable;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/PlatformConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntVariable"
.end annotation


# instance fields
.field protected m_value:I

.field final synthetic this$0:Lcom/netease/dwrg/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/PlatformConfigParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 38
    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;->this$0:Lcom/netease/dwrg/PlatformConfigParser;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/netease/dwrg/PlatformConfigParser$Variable;-><init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/lang/String;)V

    .line 40
    iput p3, p0, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;->m_value:I

    .line 41
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "predicate"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    const/4 v1, 0x0

    .line 53
    .local v1, "v":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    const-string v4, "=="

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    iget v4, p0, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;->m_value:I

    if-ne v4, v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v2, v3

    .line 58
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    move v2, v3

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    const-string v4, "!="

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    iget v4, p0, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;->m_value:I

    if-ne v4, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 68
    :cond_3
    const-string v4, ">="

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    iget v4, p0, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;->m_value:I

    if-ge v4, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 72
    :cond_4
    const-string v4, ">"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    iget v4, p0, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;->m_value:I

    if-gt v4, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 76
    :cond_5
    const-string v4, "<="

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 78
    iget v4, p0, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;->m_value:I

    if-le v4, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 80
    :cond_6
    const-string v4, "<"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 82
    iget v4, p0, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;->m_value:I

    if-lt v4, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 86
    :cond_7
    const-string v2, "NeoXDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized predicate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 88
    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;->m_value:I

    return v0
.end method
