.class Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/PlatformConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XMLHandler"
.end annotation


# static fields
.field public static final AND:I = 0x1

.field public static final OR:I = 0x2

.field public static final UNKNOWN:I


# instance fields
.field private m_condition:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_condition_group:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_config:Ljava/lang/String;

.field private m_option:Z

.field private m_options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/dwrg/PlatformConfigParser$Variable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netease/dwrg/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/netease/dwrg/PlatformConfigParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/dwrg/PlatformConfigParser$Variable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "v":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/netease/dwrg/PlatformConfigParser$Variable;>;"
    .local p3, "o":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->this$0:Lcom/netease/dwrg/PlatformConfigParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    .line 199
    iput-object p3, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    .line 201
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    .line 204
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 267
    const-string v1, "Config"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v1, "ConditionGroup"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 275
    iget-object v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 279
    .local v0, "c":I
    if-ne v0, v2, :cond_3

    .line 281
    iget-boolean v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 285
    :cond_3
    iget-boolean v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v3, v2

    :cond_5
    iput-boolean v3, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 210
    const-string v6, "Config"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    iget-object v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    .line 213
    iget-object v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    .line 214
    const-string v6, "name"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const-string v6, "ConditionGroup"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 218
    const-string v6, "type"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "t":Ljava/lang/String;
    const/4 v0, 0x0

    .line 220
    .local v0, "c":I
    const-string v6, "and"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    const/4 v0, 0x1

    .line 223
    iput-boolean v7, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    .line 230
    :goto_1
    iget-object v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    iget-boolean v7, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x2

    .line 228
    iput-boolean v8, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_1

    .line 233
    .end local v0    # "c":I
    .end local v4    # "t":Ljava/lang/String;
    :cond_3
    const-string v6, "Condition"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    iget-object v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 236
    .restart local v0    # "c":I
    if-ne v0, v7, :cond_5

    .line 238
    iget-boolean v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz v6, :cond_0

    .line 240
    const-string v6, "subject"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "subject":Ljava/lang/String;
    const-string v6, "predicate"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "predicate":Ljava/lang/String;
    const-string v6, "object"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "object":Ljava/lang/String;
    iget-object v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/dwrg/PlatformConfigParser$Variable;

    .line 245
    .local v5, "v":Lcom/netease/dwrg/PlatformConfigParser$Variable;
    iget-boolean v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz v6, :cond_4

    invoke-virtual {v5, v2, v1}, Lcom/netease/dwrg/PlatformConfigParser$Variable;->evaluate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_2

    .line 250
    .end local v1    # "object":Ljava/lang/String;
    .end local v2    # "predicate":Ljava/lang/String;
    .end local v3    # "subject":Ljava/lang/String;
    .end local v5    # "v":Lcom/netease/dwrg/PlatformConfigParser$Variable;
    :cond_5
    iget-boolean v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez v6, :cond_0

    .line 252
    const-string v6, "subject"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .restart local v3    # "subject":Ljava/lang/String;
    const-string v6, "predicate"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .restart local v2    # "predicate":Ljava/lang/String;
    const-string v6, "object"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1    # "object":Ljava/lang/String;
    iget-object v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/dwrg/PlatformConfigParser$Variable;

    .line 257
    .restart local v5    # "v":Lcom/netease/dwrg/PlatformConfigParser$Variable;
    iget-boolean v6, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez v6, :cond_6

    invoke-virtual {v5, v2, v1}, Lcom/netease/dwrg/PlatformConfigParser$Variable;->evaluate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v8, v7

    :cond_7
    iput-boolean v8, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    goto/16 :goto_0
.end method
