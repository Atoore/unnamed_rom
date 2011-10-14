.class Lcom/android/internal/widget/PenGestureView$3;
.super Ljava/lang/Object;
.source "PenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PenGestureView;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mPressed:Z
    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$100(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.screencapture.capture"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PenGestureConcept"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const-string v0, "PenGesture"

    const-string v1, "Long pressed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/widget/PenGestureView;->access$300(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    :cond_41
    return-void
.end method
