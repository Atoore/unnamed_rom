.class Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity$ActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/LauncherActivity$ActivityAdapter;


# direct methods
.method private constructor <init>(Landroid/app/LauncherActivity$ActivityAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/LauncherActivity$ActivityAdapter;Landroid/app/LauncherActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/LauncherActivity$ActivityAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 19
    .parameter "prefix"

    .prologue
    .line 182
    new-instance v8, Landroid/widget/Filter$FilterResults;

    invoke-direct {v8}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 184
    .local v8, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    move-object v13, v0

    #getter for: Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->access$100(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_34

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    move-object v13, v0

    #getter for: Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->access$200(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 186
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    move-object v14, v0

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v14, v15}, Landroid/app/LauncherActivity$ActivityAdapter;->access$102(Landroid/app/LauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 187
    monitor-exit v13
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_5e

    .line 190
    :cond_34
    if-eqz p1, :cond_3c

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_64

    .line 191
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    move-object v13, v0

    #getter for: Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->access$200(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 192
    :try_start_46
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    move-object v14, v0

    #getter for: Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/app/LauncherActivity$ActivityAdapter;->access$100(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    iput-object v5, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 194
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    iput v14, v8, Landroid/widget/Filter$FilterResults;->count:I

    .line 195
    monitor-exit v13
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_61

    .line 224
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    :goto_5d
    return-object v8

    .line 187
    :catchall_5e
    move-exception v14

    :try_start_5f
    monitor-exit v13
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v14

    .line 195
    :catchall_61
    move-exception v14

    :try_start_62
    monitor-exit v13
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v14

    .line 197
    :cond_64
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    move-object v13, v0

    #getter for: Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->access$100(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    .line 200
    .local v9, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 202
    .local v1, count:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v6, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7f
    if-ge v2, v1, :cond_ac

    .line 205
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    .line 207
    .local v3, item:Landroid/app/LauncherActivity$ListItem;
    iget-object v13, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 208
    .local v12, words:[Ljava/lang/String;
    array-length v11, v12

    .line 210
    .local v11, wordCount:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_99
    if-ge v4, v11, :cond_a6

    .line 211
    aget-object v10, v12, v4

    .line 213
    .local v10, word:Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a9

    .line 214
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v10           #word:Ljava/lang/String;
    :cond_a6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 210
    .restart local v10       #word:Ljava/lang/String;
    :cond_a9
    add-int/lit8 v4, v4, 0x1

    goto :goto_99

    .line 220
    .end local v3           #item:Landroid/app/LauncherActivity$ListItem;
    .end local v4           #k:I
    .end local v10           #word:Ljava/lang/String;
    .end local v11           #wordCount:I
    .end local v12           #words:[Ljava/lang/String;
    :cond_ac
    iput-object v6, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 221
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v8, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_5d
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 230
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    .line 231
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_12

    .line 232
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetChanged()V

    .line 236
    :goto_11
    return-void

    .line 234
    :cond_12
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetInvalidated()V

    goto :goto_11
.end method
