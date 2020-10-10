.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;
.super Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;
.source "SearchFragment2.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;


# instance fields
.field intent_key:Ljava/lang/String;

.field isHistoryKeyClick:Z

.field mBtnTextClean:Landroid/widget/ImageButton;

.field mIvBack:Landroid/widget/ImageView;

.field mMainFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

.field mSearchEdit:Landroid/widget/AutoCompleteTextView;

.field mSearchResult:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->isHistoryKeyClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->startSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->showMainPage()V

    return-void
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->showAutoTextResult(Ljava/lang/String;)V

    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .line 230
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 231
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initSearchEdit()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 133
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->getActionBarHeight()I

    move-result v0

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->convertToPx(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$3;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 164
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900dd

    .line 120
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 122
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->newInstance()Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    move-result-object v2

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mMainFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    .line 123
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mMainFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;
    .locals 2

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "search_key"

    .line 70
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;-><init>()V

    .line 72
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private showAutoTextResult(Ljava/lang/String;)V
    .locals 4

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 304
    new-array v0, v0, [Ljava/lang/String;

    .line 305
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x109000a

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->SEARCH_SUGGEST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&jsonp=window.google.ac.h"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 312
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->sendOkHttpRequest(Ljava/lang/String;Lokhttp3/Callback;)V

    :cond_1
    return-void
.end method

.method private showMainPage()V
    .locals 3

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mMainFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->isHistoryKeyClick:Z

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 278
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->newInstance()Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    move-result-object v1

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mMainFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    .line 280
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900dd

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mMainFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method private showResultPage(Ljava/lang/String;)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 261
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->newInstance(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchResult:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    .line 262
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchResult:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    const v1, 0x7f0900dd

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private startSearch(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3c

    .line 239
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->hideSoftKeyboard()V

    .line 244
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->saveSearchRecord(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "start search"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Query Key "

    .line 248
    invoke-virtual {v1, v2, p1}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 247
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->showResultPage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convertToPx(I)I
    .locals 1

    .line 358
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public fetchData()V
    .locals 0

    return-void
.end method

.method public getActionBarHeight()I
    .locals 4

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10102eb

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 366
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    .line 382
    :cond_0
    invoke-super {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090236

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "search_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->intent_key:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0087

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->unbinder:Lbutterknife/Unbinder;

    .line 93
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mBtnTextClean:Landroid/widget/ImageButton;

    new-instance p3, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$1;

    invoke-direct {p3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->initSearchEdit()V

    .line 100
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->initView()V

    .line 103
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->intent_key:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 104
    iput-boolean p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->isHistoryKeyClick:Z

    .line 106
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    iget-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->intent_key:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    iget-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->intent_key:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 109
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->intent_key:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->startSearch(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 287
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 288
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onHistoryKeyClick(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->isHistoryKeyClick:Z

    .line 221
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 224
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->startSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onViewClicked()V
    .locals 1

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
