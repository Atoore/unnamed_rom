.class public abstract Lcom/android/internal/view/BaseInputHandler;
.super Ljava/lang/Object;
.source "BaseInputHandler.java"

# interfaces
.implements Landroid/view/InputHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleKey(Landroid/view/KeyEvent;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 29
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 30
    return-void
.end method

.method public handleMotion(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 33
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 34
    return-void
.end method
