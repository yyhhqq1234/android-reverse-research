.class Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;
.super Landroid/text/method/PasswordTransformationMethod;
.source "CustomPasswordTransformationMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod$PasswordCharSequence;
    }
.end annotation


# instance fields
.field private transformation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "transformation"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;->transformation:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;->transformation:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 22
    new-instance v0, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod$PasswordCharSequence;-><init>(Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;Ljava/lang/CharSequence;)V

    return-object v0
.end method
