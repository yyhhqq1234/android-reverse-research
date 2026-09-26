.class public Lio/netty/handler/codec/http/DefaultHttpHeaders;
.super Lio/netty/handler/codec/http/HttpHeaders;
.source "DefaultHttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;,
        Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderIterator;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x11


# instance fields
.field private final entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

.field private final head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

.field protected final validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "validate"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpHeaders;-><init>()V

    .line 40
    const/16 v0, 0x11

    new-array v0, v0, [Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 41
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;-><init>(Lio/netty/handler/codec/http/DefaultHttpHeaders;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 49
    iput-boolean p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    .line 50
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lio/netty/handler/codec/http/DefaultHttpHeaders;)Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    return-object v0
.end method

.method private add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "h"    # I
    .param p2, "i"    # I
    .param p3, "name"    # Ljava/lang/CharSequence;
    .param p4, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v0, v2, p2

    .line 135
    .local v0, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    invoke-direct {v1, p0, p1, p3, p4}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;-><init>(Lio/netty/handler/codec/http/DefaultHttpHeaders;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .local v1, "newEntry":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    aput-object v1, v2, p2

    .line 136
    iput-object v0, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 139
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->addBefore(Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;)V

    .line 140
    return-void
.end method

.method private static index(I)I
    .locals 1
    .param p0, "hash"    # I

    .prologue
    .line 37
    rem-int/lit8 v0, p0, 0x11

    return v0
.end method

.method private remove0(IILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "h"    # I
    .param p2, "i"    # I
    .param p3, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 159
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v0, v2, p2

    .line 160
    .local v0, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 165
    :cond_0
    :goto_1
    iget v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v2, p1, :cond_3

    iget-object v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p3, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->remove()V

    .line 167
    iget-object v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 168
    .local v1, "next":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    if-eqz v1, :cond_1

    .line 169
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aput-object v1, v2, p2

    .line 170
    move-object v0, v1

    .line 171
    goto :goto_1

    .line 172
    :cond_1
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    const/4 v3, 0x0

    aput-object v3, v2, p2

    goto :goto_0

    .line 185
    :cond_2
    iget v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p3, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    iget-object v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 187
    invoke-virtual {v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->remove()V

    .line 181
    .end local v1    # "next":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :cond_3
    :goto_2
    iget-object v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 182
    .restart local v1    # "next":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    if-nez v1, :cond_2

    goto :goto_0

    .line 189
    :cond_4
    move-object v0, v1

    .line 180
    goto :goto_2
.end method

.method private static toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 385
    if-nez p0, :cond_0

    .line 386
    const/4 p0, 0x0

    .line 400
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 388
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 389
    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 391
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 394
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 395
    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v0

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 397
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_4

    .line 398
    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v0

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 400
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .prologue
    .line 59
    instance-of v2, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 60
    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    .line 61
    .local v0, "defaultHttpHeaders":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    iget-object v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, v2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 62
    .local v1, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :goto_0
    iget-object v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v1, v2, :cond_0

    .line 68
    .end local v0    # "defaultHttpHeaders":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    .end local v1    # "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    .end local p0    # "this":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    :goto_1
    return-object p0

    .line 63
    .restart local v0    # "defaultHttpHeaders":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    .restart local v1    # "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    .restart local p0    # "this":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    :cond_0
    iget-object v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    iget-object v3, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 64
    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0

    .line 68
    .end local v0    # "defaultHttpHeaders":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    .end local v1    # "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :cond_1
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    goto :goto_1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 6
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-boolean v4, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName0(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 120
    .local v0, "h":I
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 121
    .local v1, "i":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 128
    return-object p0

    .line 121
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 122
    .local v2, "v":Ljava/lang/Object;
    invoke-static {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 123
    .local v3, "vstr":Ljava/lang/CharSequence;
    iget-boolean v5, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v5, :cond_2

    .line 124
    invoke-static {v3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderValue(Ljava/lang/CharSequence;)V

    .line 126
    :cond_2
    invoke-direct {p0, v0, v1, p1, v3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-boolean v3, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName0(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 99
    .local v2, "strVal":Ljava/lang/CharSequence;
    invoke-static {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderValue(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 104
    .local v0, "h":I
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 105
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 106
    return-object p0

    .line 101
    .end local v0    # "h":I
    .end local v1    # "i":I
    .end local v2    # "strVal":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "strVal":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 252
    return-object p0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "ignoreCaseValue"    # Z

    .prologue
    const/4 v3, 0x1

    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "name"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v1

    .line 354
    .local v1, "h":I
    invoke-static {v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v2

    .line 355
    .local v2, "i":I
    iget-object v4, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v0, v4, v2

    .line 356
    .local v0, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :goto_0
    if-nez v0, :cond_2

    .line 370
    const/4 v3, 0x0

    :cond_1
    :goto_1
    return v3

    .line 357
    :cond_2
    iget v4, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v4, v1, :cond_3

    iget-object v4, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p1, v4}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 358
    if-eqz p3, :cond_4

    .line 359
    iget-object v4, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-static {v4, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 368
    :cond_3
    iget-object v0, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0

    .line 363
    :cond_4
    iget-object v4, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCaseValue"    # Z

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method encode(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 404
    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v0, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 405
    .local v0, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v0, v1, :cond_0

    .line 409
    return-void

    .line 406
    :cond_0
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 407
    iget-object v0, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0
.end method

.method public entries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 314
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, v2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 315
    .local v1, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v1, v2, :cond_0

    .line 319
    return-object v0

    .line 316
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "name"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 266
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v1

    .line 267
    .local v1, "h":I
    invoke-static {v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v2

    .line 268
    .local v2, "i":I
    iget-object v4, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v0, v4, v2

    .line 269
    .local v0, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    const/4 v3, 0x0

    .line 271
    .local v3, "value":Ljava/lang/CharSequence;
    :goto_0
    if-nez v0, :cond_1

    .line 278
    if-nez v3, :cond_3

    .line 279
    const/4 v4, 0x0

    .line 281
    :goto_1
    return-object v4

    .line 272
    :cond_1
    iget v4, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v4, v1, :cond_2

    iget-object v4, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p1, v4}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    iget-object v3, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    .line 276
    :cond_2
    iget-object v0, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0

    .line 281
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 6
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "name"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 295
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 297
    .local v3, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v1

    .line 298
    .local v1, "h":I
    invoke-static {v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v2

    .line 299
    .local v2, "i":I
    iget-object v4, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v0, v4, v2

    .line 300
    .local v0, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :goto_0
    if-nez v0, :cond_1

    .line 306
    return-object v3

    .line 301
    :cond_1
    iget v4, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v4, v1, :cond_2

    iget-object v4, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p1, v4}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 304
    :cond_2
    iget-object v0, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderIterator;-><init>(Lio/netty/handler/codec/http/DefaultHttpHeaders;Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderIterator;)V

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 376
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v0, v2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 377
    .local v0, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v0, v2, :cond_0

    .line 381
    return-object v1

    .line 378
    :cond_0
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0
.end method

.method public remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 153
    .local v0, "h":I
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 154
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->remove0(IILjava/lang/CharSequence;)V

    .line 155
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .prologue
    .line 74
    instance-of v2, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    move-object v0, p1

    .line 76
    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    .line 77
    .local v0, "defaultHttpHeaders":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    iget-object v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, v2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 78
    .local v1, "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :goto_0
    iget-object v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v1, v2, :cond_0

    .line 84
    .end local v0    # "defaultHttpHeaders":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    .end local v1    # "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    .end local p0    # "this":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    :goto_1
    return-object p0

    .line 79
    .restart local v0    # "defaultHttpHeaders":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    .restart local v1    # "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    .restart local p0    # "this":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    :cond_0
    iget-object v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    iget-object v3, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 80
    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0

    .line 84
    .end local v0    # "defaultHttpHeaders":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    .end local v1    # "e":Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    :cond_1
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p0

    goto :goto_1
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 6
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p2, :cond_0

    .line 224
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "values"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 226
    :cond_0
    iget-boolean v4, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName0(Ljava/lang/CharSequence;)V

    .line 230
    :cond_1
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 231
    .local v0, "h":I
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 233
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->remove0(IILjava/lang/CharSequence;)V

    .line 234
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 245
    :cond_2
    return-object p0

    .line 234
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 235
    .local v3, "v":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 238
    invoke-static {v3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 239
    .local v2, "strVal":Ljava/lang/CharSequence;
    iget-boolean v5, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v5, :cond_4

    .line 240
    invoke-static {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderValue(Ljava/lang/CharSequence;)V

    .line 242
    :cond_4
    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 202
    iget-boolean v3, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName0(Ljava/lang/CharSequence;)V

    .line 204
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 205
    .local v2, "strVal":Ljava/lang/CharSequence;
    invoke-static {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderValue(Ljava/lang/CharSequence;)V

    .line 209
    :goto_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 210
    .local v0, "h":I
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 211
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->remove0(IILjava/lang/CharSequence;)V

    .line 212
    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 213
    return-object p0

    .line 207
    .end local v0    # "h":I
    .end local v1    # "i":I
    .end local v2    # "strVal":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "strVal":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method validateHeaderName0(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "headerName"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
