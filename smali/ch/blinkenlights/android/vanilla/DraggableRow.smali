.class public Lch/blinkenlights/android/vanilla/DraggableRow;
.super Landroid/widget/LinearLayout;
.source "DraggableRow.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckBox:Landroid/widget/CheckedTextView;

.field private mChecked:Z

.field private mCoverView:Lch/blinkenlights/android/vanilla/LazyCoverView;

.field private mDragger:Landroid/widget/ImageView;

.field private mDraggerPadder:Landroid/view/View;

.field private mDurationView:Landroid/widget/TextView;

.field private mLayoutSet:Z

.field private mPmark:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adjustPadding()V
    .locals 4

    .line 230
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDragger:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDraggerPadder:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getCoverView()Lch/blinkenlights/android/vanilla/LazyCoverView;
    .locals 1

    .line 223
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mCoverView:Lch/blinkenlights/android/vanilla/LazyCoverView;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 137
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public highlightRow(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mPmark:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mChecked:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 69
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mCheckBox:Landroid/widget/CheckedTextView;

    .line 70
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mTextView:Landroid/widget/TextView;

    .line 71
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->duration:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDurationView:Landroid/widget/TextView;

    .line 72
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->pmark:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mPmark:Landroid/view/View;

    .line 73
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->dragger:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDragger:Landroid/widget/ImageView;

    .line 74
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->dragger_padder:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDraggerPadder:Landroid/view/View;

    .line 75
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/LazyCoverView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mCoverView:Lch/blinkenlights/android/vanilla/LazyCoverView;

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 117
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mChecked:Z

    .line 118
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mCheckBox:Landroid/widget/CheckedTextView;

    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public setDraggerOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 169
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 170
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 172
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDragger:Landroid/widget/ImageView;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 173
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDragger:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x3e8

    .line 211
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "--:--"

    .line 214
    :goto_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 215
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v0, -0x777778

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 216
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "???"

    .line 195
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    .line 196
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 197
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 198
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x777778

    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 199
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupLayout(I)V
    .locals 3

    .line 85
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mLayoutSet:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/DraggableRow;->highlightRow(Z)V

    .line 99
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mCoverView:Lch/blinkenlights/android/vanilla/LazyCoverView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDragger:Landroid/widget/ImageView;

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->arrow:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/DraggableRow;->highlightRow(Z)V

    .line 93
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mCoverView:Lch/blinkenlights/android/vanilla/LazyCoverView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/DraggableRow;->showDragger(Z)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mCheckBox:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 89
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/DraggableRow;->showDragger(Z)V

    .line 106
    :goto_0
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mLayoutSet:Z

    :cond_3
    return-void
.end method

.method public showDragger(Z)V
    .locals 1

    .line 154
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDragger:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/DraggableRow;->adjustPadding()V

    return-void
.end method

.method public showDuration(Z)V
    .locals 1

    .line 164
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mDurationView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/DraggableRow;->adjustPadding()V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/DraggableRow;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/DraggableRow;->setChecked(Z)V

    return-void
.end method
