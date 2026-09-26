.class Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "CustomPasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod$PasswordCharSequence;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 30
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod$PasswordCharSequence;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/CustomPasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
