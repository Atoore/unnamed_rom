.class Lcom/android/internal/policy/impl/face/Preview$6;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/face/Preview;->VerifyFace([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/face/Preview;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/face/Preview;)V
    .registers 2
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/Preview$6;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 388
    sget v0, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$6;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #calls: Lcom/android/internal/policy/impl/face/Preview;->add3_myDB12()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/face/Preview;->access$600(Lcom/android/internal/policy/impl/face/Preview;)V

    .line 395
    :cond_a
    :goto_a
    return-void

    .line 390
    :cond_b
    sget v0, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$6;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #calls: Lcom/android/internal/policy/impl/face/Preview;->add3_myDB23()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/face/Preview;->access$700(Lcom/android/internal/policy/impl/face/Preview;)V

    goto :goto_a

    .line 392
    :cond_16
    sget v0, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$6;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #calls: Lcom/android/internal/policy/impl/face/Preview;->add3_myDB3()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/face/Preview;->access$800(Lcom/android/internal/policy/impl/face/Preview;)V

    goto :goto_a
.end method
