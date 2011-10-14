.class Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;
.super Ljava/lang/Object;
.source "PageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastScrollConverter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/PageIndicator;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/PageIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$100(Lcom/sec/android/app/twlauncher/PageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$102(Lcom/sec/android/app/twlauncher/PageIndicator;Z)Z

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$200(Lcom/sec/android/app/twlauncher/PageIndicator;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$300(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Scene;->invalidate()V

    .line 271
    :cond_0
    return-void
.end method
