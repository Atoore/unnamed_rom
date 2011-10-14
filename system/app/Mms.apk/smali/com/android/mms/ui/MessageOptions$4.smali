.class Lcom/android/mms/ui/MessageOptions$4;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$editField:Landroid/widget/EditText;

.field final synthetic val$extension:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$editField:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const-string v8, "."

    const-string v7, ""

    .line 1278
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$editField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1282
    .local v1, newFileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    move-object v3, v7

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v0, checkFile:Ljava/io/File;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1286
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1287
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    move-object v3, v7

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1307
    :goto_3
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/ui/MessageOptions;->saveMode:Z

    goto :goto_0

    .line 1282
    .end local v0           #checkFile:Ljava/io/File;
    :cond_2
    const-string v3, "."

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1287
    .restart local v0       #checkFile:Ljava/io/File;
    :cond_3
    const-string v3, "."

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1292
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$300()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    if-nez v6, :cond_5

    const-string v6, ""

    move-object v6, v7

    :goto_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const-string v6, "."

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1301
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$300()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    if-nez v6, :cond_7

    const-string v6, ""

    move-object v6, v7

    :goto_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    const-string v6, "."

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method
