.class Landroid/widget/SimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/SimpleAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 22
    .parameter "prefix"

    .prologue
    .line 327
    new-instance v11, Landroid/widget/Filter$FilterResults;

    invoke-direct {v11}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 329
    .local v11, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_29

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Landroid/widget/SimpleAdapter;->access$200(Landroid/widget/SimpleAdapter;)Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v18}, Landroid/widget/SimpleAdapter;->access$102(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 333
    :cond_29
    if-eqz p1, :cond_31

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_47

    .line 334
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    .line 335
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object v8, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 336
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 373
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :goto_46
    return-object v11

    .line 338
    :cond_47
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 340
    .local v10, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    .line 341
    .local v13, unfilteredValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 343
    .local v2, count:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v9, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_63
    if-ge v4, v2, :cond_be

    .line 346
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 347
    .local v3, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v3, :cond_bb

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mTo:[I
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$300(Landroid/widget/SimpleAdapter;)[I

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move v7, v0

    .line 351
    .local v7, len:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_7c
    if-ge v5, v7, :cond_bb

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/widget/SimpleAdapter;->access$400(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v5

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 354
    .local v12, str:Ljava/lang/String;
    const-string v17, " "

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, words:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move v15, v0

    .line 357
    .local v15, wordCount:I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_a1
    if-ge v6, v15, :cond_b5

    .line 358
    aget-object v14, v16, v6

    .line 360
    .local v14, word:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b8

    .line 361
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v14           #word:Ljava/lang/String;
    :cond_b5
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 357
    .restart local v14       #word:Ljava/lang/String;
    :cond_b8
    add-int/lit8 v6, v6, 0x1

    goto :goto_a1

    .line 345
    .end local v5           #j:I
    .end local v6           #k:I
    .end local v7           #len:I
    .end local v12           #str:Ljava/lang/String;
    .end local v14           #word:Ljava/lang/String;
    .end local v15           #wordCount:I
    .end local v16           #words:[Ljava/lang/String;
    :cond_bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 369
    .end local v3           #h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_be
    iput-object v9, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 370
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_46
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 379
    iget-object v1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;
    invoke-static {v1, v0}, Landroid/widget/SimpleAdapter;->access$202(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;

    .line 380
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_13

    .line 381
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 385
    :goto_12
    return-void

    .line 383
    :cond_13
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetInvalidated()V

    goto :goto_12
.end method
