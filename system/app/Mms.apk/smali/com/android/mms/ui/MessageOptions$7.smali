.class Lcom/android/mms/ui/MessageOptions$7;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->showFileRenameDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 1356
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1358
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1359
    sget-boolean v1, Lcom/android/mms/ui/MessageOptions;->saveMode:Z

    if-nez v1, :cond_0

    .line 1360
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1362
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1368
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1369
    sput-boolean v3, Lcom/android/mms/ui/MessageOptions;->saveMode:Z

    .line 1372
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1373
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$7;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageOptions;->access$800(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;)V

    .line 1379
    :cond_2
    :goto_1
    return-void

    .line 1360
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1375
    .end local v0           #i:I
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1376
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$7;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/MessageOptions;->access$700(Lcom/android/mms/ui/MessageOptions;Ljava/util/ArrayList;J)V

    goto :goto_1
.end method
