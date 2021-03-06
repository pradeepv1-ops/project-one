/*******************************************************************************
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *******************************************************************************/

<#-- Use the createJsLanguageFileMapping service to create or update the JsLanguageFilesMapping.java. You will still need to compile thereafter -->

package org.apache.ofbiz.common;

import java.util.HashMap;
import java.util.Map;

    <#-- The comment in UPPERCASE below is dynamically put in the JsLanguageFilesMapping.java generated file, so please keep it... -->

public final class JsLanguageFilesMapping {

    // DO NOT EDIT THIS FILE!  THIS IS AUTO GENERATED AND WILL GET WRITTEN OVER PERIODICALLY WHEN THE DATA CHANGE
    // Rather use the createJsLanguageFileMapping service to create or update it. You will still need to compile thereafter

    public static class datejs {

        private static Map<String, String> localeFiles = new HashMap<String, String>();
        private static String defaultDateJs = "/images/jquery/plugins/datejs/date-en-US.js";

        static {
            <#list datejs.keySet() as dateJsFiles>
            <#assign filePath = datejs.get(dateJsFiles) />
            localeFiles.put("${dateJsFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (datejs.localeFiles.containsKey(locale)) {
                return datejs.localeFiles.get(locale);
            }
            return datejs.defaultDateJs;
        }

    }

    public static class jquery {
        private static Map<String, String> localeFiles = new HashMap<String, String>();
        private static String defaultDateJs = "/images/jquery/ui/i18n/jquery.ui.datepicker-en.js";

        static {
            <#list jquery.keySet() as jqueryFiles>
            <#assign filePath = jquery.get(jqueryFiles) />
            localeFiles.put("${jqueryFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (datejs.localeFiles.containsKey(locale)) {
                return jquery.localeFiles.get(locale);
            }
            return jquery.defaultDateJs;
        }

    }

    public static class validation {
        private static Map<String, String> localeFiles = new HashMap<String, String>();
        private static String defaultValidation = "/images/webapp/images/jquery/plugins/validate/localization/messages_en.js";

        static {
            <#list validation.keySet() as validationFiles>
            <#assign filePath = validation.get(validationFiles) />
            localeFiles.put("${validationFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (validation.localeFiles.containsKey(locale)) {
                return validation.localeFiles.get(locale);
            }
            return validation.defaultValidation;
        }
    }

    public static class dateTime {
        private static Map<String, String> localeFiles = new HashMap<String, String>();
        private static String defaultDateTime = "/images/webapp/images/jquery/ui/i18n/jquery.ui.datepicker-en.js";

        static {
            <#list dateTime.keySet() as dateTimeFiles>
            <#assign filePath = dateTime.get(dateTimeFiles)! />
            localeFiles.put("${dateTimeFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (dateTime.localeFiles.containsKey(locale)) {
                return dateTime.localeFiles.get(locale);
            }
            return dateTime.defaultDateTime;
        }
    }

    public static class cookieBar {
        private static Map<String, String> localeFiles = new HashMap<String, String>();
        private static String defaultCookieBar = "/images/webapp/images/jquery/plugins/jquery.cookieBar/localization/jquery-cookieBar-en-US.js";

        static {
            <#list cookieBar.keySet() as cookieBarFiles>
            <#assign filePath = cookieBar.get(cookieBarFiles)! />
            localeFiles.put("${cookieBarFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (cookieBar.localeFiles.containsKey(locale)) {
                return cookieBar.localeFiles.get(locale);
            }
            return cookieBar.defaultCookieBar;
        }
    }


}
