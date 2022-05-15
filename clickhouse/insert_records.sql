INSERT INTO Records (
  -- event
  ECategory                                   , -- String,
  EAction                                     , -- String,
  ELabel                                      , -- String,
  EValue                                      , -- UInt64,

  -- etc
  UserIDOrName                                , -- String,

  -- page
  PIsIframe                                   , -- , -- UInt8, --bool
  PIsTouchSupport                             , -- , -- UInt8, --bool
  PURL                                        , -- String,
  PTitle                                      , -- String,
  PCanonicalURL                               , -- String,
  PLang                                       , -- LowCardinality(String),
  PEntityID                                   , -- String,
  PEntityModule                               , -- String,
  PEntityTaxonomyID                           , -- LowCardinality(String),
  PKeywords                                   , -- Array(String),

  -- referer
  PRefererURLURL                              , -- String,
  PRefererURLExternalHost                     , -- String,
  PRefererURLExternalDomain                   , -- String,
  PRefererURLExternalName                     , -- String,
  PRefererURLExternalType                     , -- UInt8,

  -- session referer
  SRefererURLURL                              , -- String,
  SRefererURLExternalHost                     , -- String,
  SRefererURLExternalDomain                   , -- String,
  SRefererURLExternalName                     , -- String,
  SRefererURLExternalType                     , -- UInt8,

  --- utm
  UTMValid                                    , -- UInt8, -- bool
  UTMExist                                    , -- UInt8, -- bool
  UTMSource                                   , -- String,
	UTMMedium                                   , -- String,
	UTMCampaign                                 , -- String,
	UTMID                                       , -- String,
	UTMTerm                                     , -- String,
	UTMContent                                  , -- String,

  -- performance
  PerfIsProcessed                             , -- , -- UInt8, --bool
	PerfPageLoadTime                            , -- UInt16,
	PerfDomainLookupTime                        , -- UInt16,
	PerfTCPConnectTime                          , -- UInt16,
	PerfServerResponseTime                      , -- UInt16,
	PerfPageDownloadTime                        , -- UInt16,
	PerfRedirectTime                            , -- UInt16,
	PerfDOMInteractiveTime                      , -- UInt16,
	PerfContentLoadTime                         , -- UInt16,
	PerfResource                                , -- UInt16,

  -- breadcrumb
  BCLevel                                     , -- UInt8,
  BCN1                                        , -- String,
	BCN2                                        , -- String,
	BCN3                                        , -- String,
	BCN4                                        , -- String,
	BCN5                                        , -- String,
	BCP1                                        , -- String,
	BCP2                                        , -- String,
	BCP3                                        , -- String,
	BCP4                                        , -- String,
	BCP5                                        , -- String,

  -- user agent
	UaType                                      , -- LowCardinality(String),
	UaFull                                      , -- String,
	UaChecksum                                  , -- FixedString(40),
	UaBrowserName                               , -- LowCardinality(String),
	UaBrowserVersionMajor                       , -- UInt64,
	UaBrowserVersion                            , -- String,
	UaOSName                                    , -- LowCardinality(String),
	UaOSVersionMajor                            , -- UInt64,
	UaOSVersion                                 , -- String,
	UaDeviceBrand                               , -- LowCardinality(String),
	UaDeviceFamily                              , -- String,
	UaDeviceModel                               , -- String,

  -- screen
	ScrScreenOrientation                        , -- UInt8, -- bool
	ScrScreenOrientationIsPortrait              , -- UInt8, -- bool
	ScrScreenOrientationIsSecondary             , -- UInt8, -- bool
	ScrScreen                                   , -- String,
	ScrScreenWidth                              , -- UInt16,
	ScrScreenHeight                             , -- UInt16,
	ScrViewport                                 , -- String,
	ScrViewportWidth                            , -- UInt16,
	ScrViewportHeight                           , -- UInt16,
	ScrResoluton                                , -- String,
	ScrResolutonWidth                           , -- UInt16,
	ScrResolutonHeight                          , -- UInt16,
	ScrDevicePixelRatio                         , -- Float64,
	ScrColorDepth                               , -- UInt8,

  -- geo:asn
  GeoIPAutonomousSystemNumber                 , -- UInt16,
  GeoIPAutonomousSystemOrganization           , -- String,
  -- geo:ip
  GeoIPAdministratorArea                      , -- String,
  GeoIPCity                                   , -- String,
  GeoIPCityGeoNameID                          , -- UInt32,
  GeoIPCountry                                , -- LowCardinality(String),
  GeoIPLocationLatitude                       , -- Float64,
  GeoIPLocationLongitude                      , -- Float64,
  -- geo:ip+
  GeoIPLocation                               , -- Point,
  -- geo:client
	GeoClientAdministratorArea                  , -- String,
	GeoClientCity                               , -- String,
	GeoClientCityGeoNameID                      , -- UInt32,
	GeoClientCountry                            , -- String,
	GeoClientLocationLatitude                   , -- Float64,
	GeoClientLocationLongitude                  , -- Float64,
  -- geo:client+
	GeoClientLocation                           , -- Point,
  -- geo:result
	GeoResultFromClient                         , -- UInt8, -- bool
	GeoResultAdministratorArea                  , -- String,
	GeoResultCity                               , -- String,
	GeoResultCityGeoNameID                      , -- UInt32,
	GeoResultCountry                            , -- String,
	GeoResultLocationLatitude                   , -- Float64,
	GeoResultLocationLongitude                  , -- Float64,
  -- geo:result+
	GeoResultLocation                           , -- Point,

  -- client
  CidType                                     , -- UInt8,
  CidUserChecksum                             , -- FixedString(40),
  CidSessionChecksum                          , -- FixedString(40),
  CidStdInitTime                              , -- Datetime,
  CidStdSessionTime                           , -- Datetime,

  -- requirements
  IP                                          , -- IPv4,
	PublicInstanceID                             , -- String,
	Mode                                        , -- UInt8,
  CursorID                                    , -- UInt64,
	Created                                     -- Datetime
)
