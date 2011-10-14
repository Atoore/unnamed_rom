.class public Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ApplicationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method public static copyFromAppInfoAdapter(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, aDst:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .local p1, aSrc:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 76
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static copyFromFolderInfoList(Landroid/widget/ArrayAdapter;Ljava/util/concurrent/CopyOnWriteArrayList;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, aDst:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .local p1, aSrc:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 112
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static toMap(Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, aAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 92
    .local v0, dummyObj:Ljava/lang/Boolean;
    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    .line 94
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 95
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 52
    .local v0, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const v1, 0x7f030002

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .parameter "info"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resId"

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v1, v0

    .line 60
    .local v1, itemview:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 61
    return-object v1
.end method
