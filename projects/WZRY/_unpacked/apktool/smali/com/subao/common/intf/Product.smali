.class public Lcom/subao/common/intf/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/subao/common/intf/Product;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_MONTH:I = 0x1

.field public static final TYPE_QUARTER:I = 0x2

.field public static final TYPE_TRIAL:I = 0x3


# instance fields
.field private final accelDays:I

.field private final description:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final flag:I

.field private final id:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final price:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/subao/common/intf/Product$1;

    invoke-direct {v0}, Lcom/subao/common/intf/Product$1;-><init>()V

    sput-object v0, Lcom/subao/common/intf/Product;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/intf/Product;->id:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/intf/Product;->name:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/intf/Product;->price:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/intf/Product;->description:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/intf/Product;->accelDays:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/intf/Product;->flag:I

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/subao/common/intf/Product;->id:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/subao/common/intf/Product;->name:Ljava/lang/String;

    .line 102
    iput p3, p0, Lcom/subao/common/intf/Product;->price:I

    .line 103
    iput-object p4, p0, Lcom/subao/common/intf/Product;->description:Ljava/lang/String;

    .line 104
    iput p5, p0, Lcom/subao/common/intf/Product;->accelDays:I

    .line 105
    iput p6, p0, Lcom/subao/common/intf/Product;->flag:I

    .line 106
    return-void
.end method

.method public static createFromJson(Landroid/util/JsonReader;)Lcom/subao/common/intf/Product;
    .locals 10
    .param p0    # Landroid/util/JsonReader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 129
    .line 132
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move v6, v3

    move v5, v3

    move-object v4, v7

    move-object v2, v7

    move-object v1, v7

    .line 136
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 137
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 138
    const-string v8, "productId"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 139
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_0
    const-string v8, "productName"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 141
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 142
    :cond_1
    const-string v8, "description"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 143
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 144
    :cond_2
    const-string v8, "price"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 145
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    double-to-float v0, v8

    goto :goto_0

    .line 146
    :cond_3
    const-string v8, "accelDays"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 147
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    goto :goto_0

    .line 148
    :cond_4
    const-string v8, "flag"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    goto :goto_0

    .line 151
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 154
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move-object v0, v7

    .line 159
    :goto_1
    return-object v0

    .line 158
    :cond_8
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 159
    new-instance v0, Lcom/subao/common/intf/Product;

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/intf/Product;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 243
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 244
    goto :goto_0

    .line 246
    :cond_2
    instance-of v2, p1, Lcom/subao/common/intf/Product;

    if-eqz v2, :cond_0

    .line 249
    check-cast p1, Lcom/subao/common/intf/Product;

    .line 250
    iget v2, p0, Lcom/subao/common/intf/Product;->flag:I

    iget v3, p1, Lcom/subao/common/intf/Product;->flag:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/subao/common/intf/Product;->accelDays:I

    iget v3, p1, Lcom/subao/common/intf/Product;->accelDays:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/subao/common/intf/Product;->price:I

    iget v3, p1, Lcom/subao/common/intf/Product;->price:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/subao/common/intf/Product;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/intf/Product;->id:Ljava/lang/String;

    .line 253
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/intf/Product;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/intf/Product;->name:Ljava/lang/String;

    .line 254
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/intf/Product;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/intf/Product;->description:Ljava/lang/String;

    .line 255
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getAccelDays()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/subao/common/intf/Product;->accelDays:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/subao/common/intf/Product;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/subao/common/intf/Product;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/subao/common/intf/Product;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/subao/common/intf/Product;->price:I

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/subao/common/intf/Product;->price:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/subao/common/intf/Product;->flag:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 235
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[id=%s, %s, %d, price=%d]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/subao/common/intf/Product;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/subao/common/intf/Product;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/subao/common/intf/Product;->flag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/subao/common/intf/Product;->price:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/subao/common/intf/Product;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/subao/common/intf/Product;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/subao/common/intf/Product;->price:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v0, p0, Lcom/subao/common/intf/Product;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lcom/subao/common/intf/Product;->accelDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lcom/subao/common/intf/Product;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return-void
.end method
