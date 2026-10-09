.class public final Lcom/tencent/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/a/a/a/c$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/tencent/a/a/a/e;

.field private b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/a/a/a/c$1;

    invoke-direct {v0}, Lcom/tencent/a/a/a/c$1;-><init>()V

    sput-object v0, Lcom/tencent/a/a/a/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/a/a/a/e;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tencent/a/a/a/c;->b:F

    iput-object p1, p0, Lcom/tencent/a/a/a/c;->a:Lcom/tencent/a/a/a/e;

    iput p2, p0, Lcom/tencent/a/a/a/c;->b:F

    return-void
.end method

.method public static a()Lcom/tencent/a/a/a/c$a;
    .locals 1

    new-instance v0, Lcom/tencent/a/a/a/c$a;

    invoke-direct {v0}, Lcom/tencent/a/a/a/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/c;->a:Lcom/tencent/a/a/a/e;

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/tencent/a/a/a/c;->b:F

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/tencent/a/a/a/c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tencent/a/a/a/c;

    invoke-virtual {p0}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/tencent/a/a/a/c;->c()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/a/a/a/c;->c()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "target"

    invoke-virtual {p0}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "zoom"

    invoke-virtual {p0}, Lcom/tencent/a/a/a/c;->c()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/a/b/f/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Lcom/tencent/a/a/a/c;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
