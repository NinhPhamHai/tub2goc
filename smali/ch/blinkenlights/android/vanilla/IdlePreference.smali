.class public Lch/blinkenlights/android/vanilla/IdlePreference;
.super Landroid/preference/DialogPreference;
.source "IdlePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 9

    .line 95
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    const/16 v3, 0xe10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt p1, v3, :cond_0

    .line 98
    div-int/lit16 v3, p1, 0xe10

    .line 99
    sget v6, Lch/blinkenlights/android/vanilla/R$plurals;->hours:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0, v6, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    div-int/lit8 p1, p1, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    sub-int/2addr p1, v3

    .line 102
    sget v2, Lch/blinkenlights/android/vanilla/R$plurals;->minutes:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_0
    div-int/lit8 v3, p1, 0x3c

    .line 105
    sget v6, Lch/blinkenlights/android/vanilla/R$plurals;->minutes:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0, v6, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v3, 0x3c

    sub-int/2addr p1, v3

    .line 108
    sget v2, Lch/blinkenlights/android/vanilla/R$plurals;->seconds:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateText()V
    .locals 2

    .line 118
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/IdlePreference;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lch/blinkenlights/android/vanilla/IdlePreference;->mValue:I

    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/IdlePreference;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    const/16 v0, 0xe10

    .line 63
    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->getPersistedInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/IdlePreference;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    .line 70
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xe10

    .line 72
    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lch/blinkenlights/android/vanilla/IdlePreference;->mValue:I

    .line 74
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/IdlePreference;->mValueText:Landroid/widget/TextView;

    .line 76
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 78
    iget v2, p0, Lch/blinkenlights/android/vanilla/IdlePreference;->mValue:I

    add-int/lit8 v2, v2, -0x3c

    int-to-float v2, v2

    const v3, 0x46a84800    # 21540.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 79
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/IdlePreference;->updateText()V

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->shouldPersist()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget p1, p0, Lch/blinkenlights/android/vanilla/IdlePreference;->mValue:I

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->persistInt(I)Z

    .line 126
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    mul-float p1, p1, p1

    mul-float p1, p1, p1

    const p2, 0x46a84800    # 21540.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x3c

    .line 138
    iput p1, p0, Lch/blinkenlights/android/vanilla/IdlePreference;->mValue:I

    .line 139
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/IdlePreference;->updateText()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
