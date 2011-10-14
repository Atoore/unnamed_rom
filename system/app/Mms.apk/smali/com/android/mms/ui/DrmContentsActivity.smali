.class public Lcom/android/mms/ui/DrmContentsActivity;
.super Landroid/app/Activity;
.source "DrmContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;,
        Lcom/android/mms/ui/DrmContentsActivity$DrmItem;
    }
.end annotation


# instance fields
.field private mDrmItemAdapter:Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

.field private mDrmItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/DrmContentsActivity$DrmItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DrmContentsActivity;)Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemAdapter:Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DrmContentsActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DrmContentsActivity;->acqueireLicense(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private acqueireLicense(Ljava/lang/String;)Z
    .locals 5
    .parameter "drmFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "DrmContentsActivity"

    .line 76
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 77
    .local v1, result:Ljava/lang/Boolean;
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    .line 79
    .local v0, drmManager:Landroid/drm/mobile2/OMADRMManager;
    const-string v2, "DrmContentsActivity"

    const-string v2, "acqueireLicense : getLicense from Browser"

    invoke-static {v4, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "DrmContentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acqueireLicense : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/drm/mobile2/OMADRMManager;->getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v2}, Landroid/drm/mobile2/OMADRMManager;->acquireLicense(Landroid/content/Context;Ljava/lang/String;Landroid/drm/mobile2/DCFHeaderInfo;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 83
    const-string v2, "DrmContentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acqueireLicense mOkListener : DRM rights acquireLicense result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private initArrayList([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "drmFilePaths"
    .parameter "drmFileNames"

    .prologue
    .line 88
    array-length v0, p1

    .line 89
    .local v0, drmFileCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 90
    new-instance v2, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;-><init>(Lcom/android/mms/ui/DrmContentsActivity;Lcom/android/mms/ui/DrmContentsActivity$1;)V

    .line 91
    .local v2, item:Lcom/android/mms/ui/DrmContentsActivity$DrmItem;
    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->setStringOnItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v2           #item:Lcom/android/mms/ui/DrmContentsActivity$DrmItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v4, 0x7f030010

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/DrmContentsActivity;->setContentView(I)V

    .line 38
    const v4, 0x7f080047

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/DrmContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 40
    .local v3, listView:Landroid/widget/ListView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemList:Ljava/util/ArrayList;

    .line 41
    new-instance v4, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    const v5, 0x7f030011

    iget-object v6, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, p0, v5, v6}, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;-><init>(Lcom/android/mms/ui/DrmContentsActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemAdapter:Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    .line 44
    invoke-virtual {p0}, Lcom/android/mms/ui/DrmContentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 46
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "drmFilePath"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, drmFilePaths:[Ljava/lang/String;
    const-string v4, "drmFileName"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, drmFileNames:[Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/DrmContentsActivity;->initArrayList([Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemAdapter:Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    new-instance v4, Lcom/android/mms/ui/DrmContentsActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/DrmContentsActivity$1;-><init>(Lcom/android/mms/ui/DrmContentsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    return-void
.end method
