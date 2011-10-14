.class Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;
.super Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;
.source "GLFastScrollIndexView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 443
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->run()V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->access$300(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->access$100(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->access$000(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->access$200(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressed(Z)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    .line 447
    return-void
.end method
