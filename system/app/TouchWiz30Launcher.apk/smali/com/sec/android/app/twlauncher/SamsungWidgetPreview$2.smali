.class Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;
.super Ljava/lang/Object;
.source "SamsungWidgetPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getCurrentScreen()I

    move-result v0

    .line 131
    .local v0, current:I
    if-lez v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v1

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    .line 134
    .end local v0           #current:I
    :cond_0
    return-void
.end method
