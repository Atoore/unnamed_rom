.class Lcom/sec/android/app/twlauncher/Launcher$NameFolder;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameFolder"
.end annotation


# instance fields
.field private mInput:Landroid/widget/EditText;

.field mType:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5408
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5408
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5408
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->cleanup()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5408
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->changeFolderName()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5408
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->mInput:Landroid/widget/EditText;

    return-object v0
.end method

.method private changeFolderName()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5455
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->mInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5456
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5457
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5488
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->cleanup()V

    .line 5489
    :goto_1
    return-void

    .line 5459
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/Launcher;->access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->findFolderById(J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$3202(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5460
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5463
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 5464
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 5465
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5466
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 5467
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, v6, v3, v6, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    goto :goto_0

    .line 5469
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$1400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderIcon;

    .line 5471
    .local v0, folderIcon:Lcom/sec/android/app/twlauncher/FolderIcon;
    if-eqz v0, :cond_2

    .line 5472
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 5473
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    goto :goto_0

    .line 5475
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2, v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$3402(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 5476
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 5477
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, v6, v3, v6, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    goto/16 :goto_0

    .line 5482
    .end local v0           #folderIcon:Lcom/sec/android/app/twlauncher/FolderIcon;
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->renameFolder(Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-eq v7, v2, :cond_0

    goto/16 :goto_1

    .line 5457
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 5492
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$1400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->unlock()V

    .line 5494
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->mType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5499
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$3202(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5500
    return-void

    .line 5495
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(Landroid/app/AlertDialog$Builder;I)Landroid/app/Dialog;
    .locals 5
    .parameter "builder"
    .parameter "aType"

    .prologue
    .line 5413
    iput p2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->mType:I

    .line 5414
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5415
    .local v1, layout:Landroid/view/View;
    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->mInput:Landroid/widget/EditText;

    .line 5416
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5417
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5418
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5423
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5429
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5435
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5437
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5438
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$4;-><init>(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 5451
    return-object v0
.end method
