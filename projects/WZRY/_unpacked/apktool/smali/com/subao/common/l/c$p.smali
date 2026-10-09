.class Lcom/subao/common/l/c$p;
.super Lcom/subao/common/l/c$n;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/subao/common/l/c$h;Lcom/subao/common/l/c$b;)V
    .locals 0

    .prologue
    .line 1147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/subao/common/l/c$n;-><init>(Ljava/lang/String;ILcom/subao/common/l/c$h;Lcom/subao/common/l/c$b;)V

    .line 1148
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/subao/common/l/c$c;
    .locals 1

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/subao/common/l/c$p;->a()Lcom/subao/common/l/c$c;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/subao/common/l/c$c;)V
    .locals 0

    .prologue
    .line 1157
    invoke-virtual {p0, p1}, Lcom/subao/common/l/c$p;->a(Lcom/subao/common/l/c$c;)V

    .line 1158
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/subao/common/l/c$p;->a([Ljava/lang/Void;)Lcom/subao/common/l/c$c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1144
    check-cast p1, Lcom/subao/common/l/c$c;

    invoke-virtual {p0, p1}, Lcom/subao/common/l/c$p;->b(Lcom/subao/common/l/c$c;)V

    return-void
.end method
