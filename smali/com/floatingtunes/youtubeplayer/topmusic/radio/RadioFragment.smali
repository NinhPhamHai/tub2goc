.class public Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;
.super Landroidx/fragment/app/Fragment;
.source "RadioFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;
    }
.end annotation


# instance fields
.field fragmentContainer:Landroid/widget/RelativeLayout;

.field mContext:Landroid/content/Context;

.field musicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;

.field rcv:Landroidx/recyclerview/widget/RecyclerView;

.field recycleViewAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;

.field swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getMatColor(Ljava/lang/String;)I
    .locals 5

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdcolor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "array"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 167
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    int-to-double v3, v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 168
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 169
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return v0
.end method


# virtual methods
.method getLocalJson()V
    .locals 7

    const-string v0, "title"

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->musicList:Ljava/util/List;

    .line 94
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->mContext:Landroid/content/Context;

    const-string v2, "radiomap.json"

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/LocalJsonResolutionUtils;->getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 100
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 101
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "playlistId"

    .line 108
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 109
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "id"

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->musicList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0083

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->unbinder:Lbutterknife/Unbinder;

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->getLocalJson()V

    .line 77
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->setColors()V

    .line 80
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->setRecycleView()V

    .line 82
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->setRefresh()V

    return-object p1
.end method

.method public setColors()V
    .locals 5

    .line 127
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x9

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->musicList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->getMatColor(Ljava/lang/String;)I

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->musicList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "color"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->musicList:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRecycleView()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 181
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 182
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 182
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 184
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->musicList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->recycleViewAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;

    .line 185
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->recycleViewAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setRefresh()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 194
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f060040

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 197
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 200
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method
