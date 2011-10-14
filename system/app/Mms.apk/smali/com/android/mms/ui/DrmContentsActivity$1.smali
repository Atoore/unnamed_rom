.class Lcom/android/mms/ui/DrmContentsActivity$1;
.super Ljava/lang/Object;
.source "DrmContentsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DrmContentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DrmContentsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DrmContentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mms/ui/DrmContentsActivity$1;->this$0:Lcom/android/mms/ui/DrmContentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v3, "DrmContentsActivity"

    .line 57
    iget-object v3, p0, Lcom/android/mms/ui/DrmContentsActivity$1;->this$0:Lcom/android/mms/ui/DrmContentsActivity;

    invoke-static {v3}, Lcom/android/mms/ui/DrmContentsActivity;->access$000(Lcom/android/mms/ui/DrmContentsActivity;)Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;

    .line 58
    .local v2, item:Lcom/android/mms/ui/DrmContentsActivity$DrmItem;
    invoke-virtual {v2}, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, drmFilePath:Ljava/lang/String;
    :try_start_0
    const-string v3, "DrmContentsActivity"

    const-string v4, "DrmContentsActivity OnItemClickListener : DRM rights acquireLicense start."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/android/mms/ui/DrmContentsActivity$1;->this$0:Lcom/android/mms/ui/DrmContentsActivity;

    invoke-static {v3, v0}, Lcom/android/mms/ui/DrmContentsActivity;->access$100(Lcom/android/mms/ui/DrmContentsActivity;Ljava/lang/String;)Z

    .line 63
    const-string v3, "DrmContentsActivity"

    const-string v4, "DrmContentsActivity OnItemClickListener : DRM rights acquireLicense end."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 66
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 68
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
