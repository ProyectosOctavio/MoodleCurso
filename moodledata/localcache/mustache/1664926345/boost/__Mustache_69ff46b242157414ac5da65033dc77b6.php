<?php

class __Mustache_69ff46b242157414ac5da65033dc77b6 extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';

        $buffer .= $indent . '
';
        $buffer .= $indent . '<span class="qbank-creator-name">
';
        $buffer .= $indent . '    ';
        $value = $this->resolveValue($context->find('creator'), $context);
        $buffer .= ($value === null ? '' : call_user_func($this->mustache->getEscape(), $value));
        $buffer .= '
';
        $buffer .= $indent . '</span>
';
        $buffer .= $indent . '<br>
';
        $buffer .= $indent . '<span class="date">
';
        $buffer .= $indent . '    ';
        $value = $this->resolveValue($context->find('date'), $context);
        $buffer .= ($value === null ? '' : call_user_func($this->mustache->getEscape(), $value));
        $buffer .= '
';
        $buffer .= $indent . '</span>
';

        return $buffer;
    }
}
