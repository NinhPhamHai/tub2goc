.class public Lch/blinkenlights/android/vanilla/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxKey:Ljava/lang/String;

.field private mCheckBoxText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInitialValue:I

.field private mMaxValue:I

.field private mSteps:I

.field private mSummaryFormat:Ljava/lang/String;

.field private mSummaryText:Ljava/lang/String;

.field private mSummaryValueAddition:F

.field private mSummaryValueMultiplication:F

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;

.field private mZeroText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0, p2}, Lch/blinkenlights/android/vanilla/SeekBarPreference;->initDefaults(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getCheckBoxPreference()Z
    .locals 3

    .line 238
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBoxKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getSummary(I)Ljava/lang/String;
    .locals 5

    int-to-float p1, p1

    .line 155
    iget v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryValueAddition:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    add-float/2addr p1, v0

    .line 157
    :cond_0
    iget v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryValueMultiplication:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    mul-float p1, p1, v0

    .line 160
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryText:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    .line 162
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mZeroText:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private initDefaults(Landroid/util/AttributeSet;)V
    .locals 2

    .line 111
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 113
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference_sbpMaxValue:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mMaxValue:I

    .line 114
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference_sbpSteps:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSteps:I

    .line 115
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference_sbpSummaryValueMultiplication:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryValueMultiplication:F

    .line 116
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference_sbpSummaryValueAddition:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryValueAddition:F

    .line 117
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference_sbpSummaryFormat:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryFormat:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryFormat:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "%s %.1f"

    :cond_0
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryFormat:Ljava/lang/String;

    .line 119
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference_sbpSummaryText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryText:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryText:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSummaryText:Ljava/lang/String;

    .line 121
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference_sbpSummaryZeroText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mZeroText:Ljava/lang/String;

    .line 122
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference_sbpCheckBoxKey:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBoxKey:Ljava/lang/String;

    .line 123
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SeekBarPreference_sbpCheckBoxText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBoxText:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private saveCheckBoxPreference(Z)V
    .locals 2

    .line 232
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBoxKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setValue(I)V
    .locals 2

    .line 226
    iput p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValue:I

    .line 227
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/SeekBarPreference;->getSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->persistInt(I)Z

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 131
    iget v0, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValue:I

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/SeekBarPreference;->getSummary(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .line 171
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 173
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 174
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget v2, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValue:I

    invoke-direct {p0, v2}, Lch/blinkenlights/android/vanilla/SeekBarPreference;->getSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 178
    iget v2, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mMaxValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 179
    iget v2, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 180
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 182
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBoxKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 183
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->check_box:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 184
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBoxText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SeekBarPreference;->getCheckBoxPreference()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 186
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 195
    iget p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValue:I

    iput p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mInitialValue:I

    .line 196
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/SeekBarPreference;->saveCheckBoxPreference(Z)V

    goto :goto_0

    .line 200
    :cond_0
    iget p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mInitialValue:I

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/SeekBarPreference;->setValue(I)V

    .line 202
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x64

    .line 137
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 209
    iget p3, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mSteps:I

    div-int/2addr p2, p3

    mul-int p2, p2, p3

    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 211
    invoke-direct {p0, p2}, Lch/blinkenlights/android/vanilla/SeekBarPreference;->setValue(I)V

    :cond_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 143
    iget p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValue:I

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mValue:I

    iput p1, p0, Lch/blinkenlights/android/vanilla/SeekBarPreference;->mInitialValue:I

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
