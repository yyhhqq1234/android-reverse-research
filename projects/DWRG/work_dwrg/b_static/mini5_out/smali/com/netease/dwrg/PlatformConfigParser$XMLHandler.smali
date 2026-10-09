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

.field public static final NOT:I = 0x3

.field public static final OR:I = 0x2

.field public static final UNKNOWN:I


# instance fields
.field private m_condition:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_condition_group:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_config:Ljava/lang/String;

.field private m_default_value:Ljava/lang/String;

.field private m_option:Z

.field private m_options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_value:Ljava/lang/String;

.field private m_variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/dwrg/PlatformConfigParser$Variable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netease/dwrg/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/dwrg/PlatformConfigParser$Variable;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->this$0:Lcom/netease/dwrg/PlatformConfigParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 207
    const-string p1, ""

    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_value:Ljava/lang/String;

    .line 208
    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_default_value:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    .line 213
    iput-object p3, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    .line 214
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    .line 215
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 297
    const-string p1, "Config"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 299
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_value:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 301
    iget-boolean p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz p1, :cond_0

    .line 304
    :try_start_0
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 305
    iget-object p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    iget-object p3, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_value:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_default_value:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 315
    :try_start_1
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_default_value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 316
    iget-object p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 319
    :catch_1
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    iget-object p3, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_default_value:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    :cond_1
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_options:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    iget-boolean p3, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 329
    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    goto/16 :goto_1

    .line 331
    :cond_3
    const-string p1, "ConditionGroup"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 333
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 334
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 335
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 337
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_5

    .line 340
    iget-boolean p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    iput-boolean p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    .line 341
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 342
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    iget-boolean p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 346
    iget-boolean p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 p2, 0x1

    :cond_7
    iput-boolean p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    .line 347
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 348
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    iget-boolean p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 352
    :cond_8
    iget-boolean p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    xor-int/2addr p1, p3

    iput-boolean p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    :cond_9
    :goto_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 224
    const-string p1, "Config"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 227
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 228
    const-string p1, "name"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_config:Ljava/lang/String;

    .line 229
    const-string p1, "value"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_value:Ljava/lang/String;

    .line 230
    const-string p1, "default_value"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_default_value:Ljava/lang/String;

    goto/16 :goto_1

    .line 232
    :cond_0
    const-string p1, "ConditionGroup"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 234
    const-string p1, "type"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    const-string p3, "and"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 239
    iput-boolean v2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    const/4 p2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const-string p3, "or"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 244
    iput-boolean v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    const/4 p2, 0x2

    goto :goto_0

    .line 249
    :cond_2
    iput-boolean v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    .line 251
    :goto_0
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition:Ljava/util/Stack;

    iget-boolean p2, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 254
    :cond_3
    const-string p1, "Condition"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 256
    iget-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_condition_group:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 257
    const-string p3, "object"

    const-string v3, "predicate"

    const-string v4, "subject"

    if-ne p1, v2, :cond_5

    .line 259
    iget-boolean p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz p1, :cond_9

    .line 261
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 263
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 265
    iget-object p4, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/dwrg/PlatformConfigParser$Variable;

    .line 266
    iget-boolean p4, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-eqz p4, :cond_4

    invoke-virtual {p1, p2, p3}, Lcom/netease/dwrg/PlatformConfigParser$Variable;->evaluate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_8

    .line 271
    iget-boolean p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez p1, :cond_9

    .line 273
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 277
    iget-object p4, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/dwrg/PlatformConfigParser$Variable;

    .line 278
    iget-boolean p4, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    if-nez p4, :cond_6

    invoke-virtual {p1, p2, p3}, Lcom/netease/dwrg/PlatformConfigParser$Variable;->evaluate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    goto :goto_1

    :cond_8
    if-ne p1, p2, :cond_9

    .line 283
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 285
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 287
    iget-object p4, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_variables:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/dwrg/PlatformConfigParser$Variable;

    .line 288
    invoke-virtual {p1, p2, p3}, Lcom/netease/dwrg/PlatformConfigParser$Variable;->evaluate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;->m_option:Z

    :cond_9
    :goto_1
    return-void
.end method
