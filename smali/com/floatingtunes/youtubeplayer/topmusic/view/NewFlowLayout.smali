.class public Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;
.super Landroid/view/ViewGroup;
.source "NewFlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$TextClickListener;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInternalListener:Landroid/view/View$OnClickListener;

.field mOutsideListener:Landroid/view/View$OnClickListener;

.field private mTopKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "Nice For What"

    const-string v1, "Psycho"

    const-string v2, "God\'s Plan"

    const-string v3, "Meant To Be"

    const-string v4, "The Middle"

    const-string v5, "Never Be The Same"

    const-string v6, "Better Now"

    .line 30
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->mTopKeys:[Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->mContext:Landroid/content/Context;

    .line 44
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$TextClickListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$TextClickListener;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$1;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->mInternalListener:Landroid/view/View$OnClickListener;

    .line 45
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->mTopKeys:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->addTextView([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addTextView([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 53
    array-length p1, p1

    if-eqz p1, :cond_3

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getDbCheckInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->mTopKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 60
    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 67
    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$1;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;)V

    .line 68
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 67
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;

    .line 70
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;->getHot_search_keys()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 73
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    .line 83
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    const v3, 0x7f0c0073

    .line 86
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto :goto_3

    :cond_2
    const v3, 0x7f0c0074

    .line 88
    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 90
    :goto_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->mInternalListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public addTextViewClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->mOutsideListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 107
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 172
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-ge p1, p5, :cond_1

    .line 174
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 175
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 177
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 178
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 179
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 180
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    add-int v4, p2, v2

    .line 183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    add-int/2addr p2, v1

    add-int/2addr v3, p3

    add-int v1, p3, v0

    .line 184
    invoke-virtual {p5, p2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 186
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    move p4, p2

    move p2, v4

    goto :goto_1

    :cond_0
    add-int/2addr p3, p4

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v3, p3

    add-int/lit8 v2, v2, 0x0

    add-int p2, p3, v0

    .line 192
    invoke-virtual {p5, v1, v3, v2, p2}, Landroid/view/View;->layout(IIII)V

    move p4, v0

    move p2, v2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 114
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 115
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 116
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 121
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 122
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 123
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 124
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 126
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 127
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    if-gt v7, v0, :cond_0

    .line 130
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 131
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 134
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v9

    add-int/2addr v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int p1, v5, v6

    const/high16 p2, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    if-ne v2, p2, :cond_3

    .line 148
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v8

    :goto_2
    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    if-ne v3, p2, :cond_5

    .line 155
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, p1

    .line 160
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
