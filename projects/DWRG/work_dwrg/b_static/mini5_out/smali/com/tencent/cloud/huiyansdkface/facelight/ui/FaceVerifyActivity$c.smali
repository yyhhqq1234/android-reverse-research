.class Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a([Ljava/lang/String;[IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:[I

.field final synthetic d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;


# direct methods
.method constructor <init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;Z[Ljava/lang/String;[I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;

    iput-boolean p2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->a:Z

    iput-object p3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "FaceVerifyActivity"

    const-string v1, "user didnt open permissions!"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;

    invoke-static {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;

    invoke-static {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->c:[I

    invoke-static {v0, v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;[Ljava/lang/String;[I)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;

    invoke-static {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;

    invoke-static {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;

    invoke-static {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;

    invoke-static {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)V

    :goto_0
    return-void
.end method
