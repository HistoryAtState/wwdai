<schema queryBinding="xslt3" xmlns="http://purl.oclc.org/dsdl/schematron"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <title>WWDAI TEI Rules</title>

    <p>This schematron adds WWDAI TEI-specific rules to the more generic tei-all.rng RelaxNG Schema
        file. WWDAI TEI files that validate against *both* schema files are considered valid WWDAI
        TEI files.</p>

    <ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>
    <ns prefix="xml" uri="http://www.w3.org/XML/1998/namespace"/>

    <pattern>
        <rule context="tei:ref">
            <assert test="matches(@target, '^(https?://|mailto:)')">Invalid URL: must start with
                http://, https://, or mailto:</assert>
        </rule>
    </pattern>

</schema>
